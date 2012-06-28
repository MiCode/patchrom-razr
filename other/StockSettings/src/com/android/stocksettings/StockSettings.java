/*
 * Copyright (C) 2010 The Android Open Source Project
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

package com.android.stocksettings;
import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.app.ActionBar;

import java.util.ArrayList;

public class StockSettings extends PreferenceActivity{
    private static final String LOG_TAG = "StockSettings";

    private static final String STOCK_SET_ENTRY_DB_KEY = "hdmi_autodetection";
    private static final String STOCK_SET_ENTRY_CB_KEY = "stock_settings_entry";

    private CheckBoxPreference mStockSetEntry;

    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mStockSetEntry = (CheckBoxPreference) findPreference(STOCK_SET_ENTRY_CB_KEY);
        updateState();
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mStockSetEntry) {
            if (mStockSetEntry.isChecked()) {
                Settings.System.putInt(getContentResolver(), STOCK_SET_ENTRY_DB_KEY, 1);
            } else {
                Settings.System.putInt(getContentResolver(), STOCK_SET_ENTRY_DB_KEY, 0);
            }
        }
        else {
            //do nothing
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;

        default:
            return super.onOptionsItemSelected(item);
        }
    }

    private void updateState() {
        mStockSetEntry.setChecked(Settings.System.getInt(getContentResolver(), STOCK_SET_ENTRY_DB_KEY, 0) != 0);
    }
}


