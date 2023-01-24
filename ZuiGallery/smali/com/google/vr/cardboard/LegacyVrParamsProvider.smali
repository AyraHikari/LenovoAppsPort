.class public final Lcom/google/vr/cardboard/LegacyVrParamsProvider;
.super Ljava/lang/Object;
.source "LegacyVrParamsProvider.java"

# interfaces
.implements Lcom/google/vr/cardboard/VrParamsProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/google/vr/cardboard/LegacyVrParamsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/LegacyVrParamsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 20
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readDeviceParamsFromExternalStorage()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public final readPhoneParams()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;
    .locals 1

    .line 37
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readPhoneParamsFromExternalStorage()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/google/vr/cardboard/PhoneParams;->getPpiOverride()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final readSdkConfigurationParams(Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final readUserPrefs()Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final updateUserPrefs(Lcom/google/vr/sdk/proto/nano/Preferences$UserPrefs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPrefs"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final writeDeviceParams(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 27
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->removeDeviceParamsFromExternalStorage()Z

    move-result p1

    return p1

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/google/vr/cardboard/ConfigUtils;->writeDeviceParamsToExternalStorage(Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;)Z

    move-result p1

    return p1
.end method
