.class Lcom/google/vr/sdk/widgets/video/deps/al$1;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/Z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/al;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/al;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/al;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$1;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al$1;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$1;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al$1;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al$1;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
