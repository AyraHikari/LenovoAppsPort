.class public Lcom/google/vr/cardboard/VrSettingsProviderContract;
.super Ljava/lang/Object;
.source "VrSettingsProviderContract.java"


# static fields
.field public static final DASHBOARD_ENABLED:Ljava/lang/String; = "dashboard_enabled"

.field public static final DAYDREAM_SETUP_COMPLETED:Ljava/lang/String; = "daydream_setup"

.field public static final DEVICE_PARAMS_SETTING:Ljava/lang/String; = "device_params"

.field public static final PHONE_PARAMS_SETTING:Ljava/lang/String; = "phone_params"

.field public static final PROVIDER_INTENT_ACTION:Ljava/lang/String; = "android.content.action.VR_SETTINGS_PROVIDER"

.field public static final QUERY_PARAMETER_KEY:Ljava/lang/String; = "key"

.field public static final SDK_CONFIGURATION_PARAMS_SETTING:Ljava/lang/String; = "sdk_configuration_params"

.field public static final SETTING_VALUE_KEY:Ljava/lang/String; = "value"

.field public static final USER_PREFS_SETTING:Ljava/lang/String; = "user_prefs"

.field public static final VRCORE_AUTHORITY:Ljava/lang/String; = "com.google.vr.vrcore.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "setting"
        }
    .end annotation

    .line 57
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static createUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "setting",
            "key"
        }
    .end annotation

    .line 65
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 66
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "key"

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
