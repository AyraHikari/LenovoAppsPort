.class public Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;
.super Ljava/lang/Object;
.source "TrackingSensorsHelper.java"


# static fields
.field public static enableTouchTracking:Z = false

.field public static pretendSensorsAreAvailableForTesting:Z = false

.field public static showStereoModeButtonForTesting:Z = false


# instance fields
.field packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageManager"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public areTrackingSensorsAvailable()Z
    .locals 4

    .line 27
    sget-boolean v0, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->pretendSensorsAreAvailableForTesting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 30
    :cond_0
    sget-boolean v0, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->enableTouchTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->packageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->packageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.sensor.accelerometer"

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public showStereoModeButtonForTesting()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->showStereoModeButtonForTesting:Z

    return v0
.end method
