.class Lcom/google/vr/ndk/base/DaydreamApi$6;
.super Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;
.source "DaydreamApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->launchInVrForResult(Landroid/app/Activity;Landroid/app/PendingIntent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/Activity;Landroid/app/PendingIntent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity",
            "val$pendingIntent",
            "val$requestCode"
        }
    .end annotation

    .line 573
    iput-object p2, p0, Lcom/google/vr/ndk/base/DaydreamApi$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/vr/ndk/base/DaydreamApi$6;->val$pendingIntent:Landroid/app/PendingIntent;

    iput p4, p0, Lcom/google/vr/ndk/base/DaydreamApi$6;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionComplete()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$6;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/vr/ndk/base/DaydreamApi$6$1;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/DaydreamApi$6$1;-><init>(Lcom/google/vr/ndk/base/DaydreamApi$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
