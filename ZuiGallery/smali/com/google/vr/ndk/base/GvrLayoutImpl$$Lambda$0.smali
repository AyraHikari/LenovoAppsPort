.class final synthetic Lcom/google/vr/ndk/base/GvrLayoutImpl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/vr/ndk/base/GvrLayoutImpl;

.field private final arg$2:Z


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$$Lambda$0;->arg$1:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    iput-boolean p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$$Lambda$0;->arg$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$$Lambda$0;->arg$1:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$$Lambda$0;->arg$2:Z

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->lambda$setStereoModeEnabled$0$GvrLayoutImpl(Z)V

    return-void
.end method
