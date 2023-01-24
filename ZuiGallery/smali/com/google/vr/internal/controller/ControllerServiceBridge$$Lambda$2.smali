.class final synthetic Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/vr/internal/controller/ControllerServiceBridge;


# direct methods
.method constructor <init>(Lcom/google/vr/internal/controller/ControllerServiceBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$2;->arg$1:Lcom/google/vr/internal/controller/ControllerServiceBridge;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$2;->arg$1:Lcom/google/vr/internal/controller/ControllerServiceBridge;

    invoke-virtual {v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->bridge$lambda$0$ControllerServiceBridge()V

    return-void
.end method
