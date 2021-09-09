/*
 * Copyright (C) 2021 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.radio;

import android.hardware.radio.ApnAuthType;
import android.hardware.radio.ApnTypes;
import android.hardware.radio.DataProfileId;
import android.hardware.radio.DataProfileInfoType;
import android.hardware.radio.PdpProtocolType;
import android.hardware.radio.RadioAccessFamily;

@VintfStability
parcelable DataProfileInfo {
    /**
     * ID of the data profile.
     */
    DataProfileId profileId;
    /**
     * The APN name.
     */
    String apn;
    /**
     * PDP_type values.
     */
    PdpProtocolType protocol;
    /**
     * PDP_type values used on roaming network.
     */
    PdpProtocolType roamingProtocol;
    /**
     * APN authentication type.
     */
    ApnAuthType authType;
    /**
     * The username for APN, or empty string.
     */
    String user;
    /**
     * The password for APN, or empty string.
     */
    String password;
    /**
     * Data profile technology type.
     */
    DataProfileInfoType type;
    /**
     * The period in seconds to limit the maximum connections.
     */
    int maxConnsTime;
    /**
     * The maximum connections during maxConnsTime.
     */
    int maxConns;
    /**
     * The required wait time in seconds after a successful UE initiated disconnect of a given PDN
     * connection before the device can send a new PDN connection request for that given PDN.
     */
    int waitTime;
    /**
     * True to enable the profile, false to disable.
     */
    boolean enabled;
    /**
     * Supported APN types bitmap. See ApnTypes for the value of each bit.
     */
    ApnTypes supportedApnTypesBitmap;
    /**
     * The bearer bitmap. See RadioAccessFamily for the value of each bit.
     */
    RadioAccessFamily bearerBitmap;
    /**
     * Maximum transmission unit (MTU) size in bytes for IPv4.
     */
    int mtuV4;
    /**
     * Maximum transmission unit (MTU) size in bytes for IPv6.
     */
    int mtuV6;
    /**
     * True if this data profile was used to bring up the last default (i.e internet) data
     * connection successfully.
     */
    boolean preferred;
    /**
     * If true, modem must persist this data profile and profileId must not be set to
     * DataProfileId.INVALID. If the same data profile exists, this data profile must overwrite it.
     */
    boolean persistent;
}