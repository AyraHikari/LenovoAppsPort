package com.zui.cloudservice.lpcs;
import com.zui.cloudservice.lpcs.LPCSResult;

interface ILPCSResultCallback {
    void onResult(in LPCSResult result);
}
