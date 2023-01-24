.class Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;
.super Ljava/lang/Object;
.source "ControllerServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/internal/controller/ControllerServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalControllerListener"
.end annotation


# instance fields
.field public final callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

.field public final controllerIndex:I

.field public final options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;


# direct methods
.method public constructor <init>(Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callbacks",
            "options",
            "controllerIndex"
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    .line 194
    iput-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    .line 195
    iput p3, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    return-void
.end method
