.class Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;
.super Ljava/lang/Object;
.source "VrCoreSdkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->applyColorfulFadeImpl(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$color:I

.field final synthetic val$durationMillis:J

.field final synthetic val$fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

.field final synthetic val$fadeType:I


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;Lcom/google/vr/ndk/base/FadeOverlayView;IJI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fadeOverlayView",
            "val$fadeType",
            "val$durationMillis",
            "val$color"
        }
    .end annotation

    .line 709
    iput-object p2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    iput p3, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$fadeType:I

    iput-wide p4, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$durationMillis:J

    iput p6, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 712
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    iget v1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$fadeType:I

    iget-wide v2, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$durationMillis:J

    iget v4, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$2;->val$color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/vr/ndk/base/FadeOverlayView;->startFade(IJI)V

    return-void
.end method
