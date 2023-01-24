.class public interface abstract Lcom/google/vr/cardboard/VrParamsProvider;
.super Ljava/lang/Object;
.source "VrParamsProvider.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
.end method

.method public abstract readPhoneParams()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
.end method

.method public abstract readSdkConfigurationParams(Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation
.end method

.method public abstract readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;
.end method

.method public abstract updateUserPrefs(Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPrefs"
        }
    .end annotation
.end method

.method public abstract writeDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation
.end method
