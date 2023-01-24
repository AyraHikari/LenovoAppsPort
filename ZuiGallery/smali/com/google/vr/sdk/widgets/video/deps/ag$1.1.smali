.class Lcom/google/vr/sdk/widgets/video/deps/ag$1;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/ae$b;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/ag;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ag;Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$1;->b:Lcom/google/vr/sdk/widgets/video/deps/ag;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$1;->a:Lcom/google/vr/sdk/widgets/video/deps/ae$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$1;->a:Lcom/google/vr/sdk/widgets/video/deps/ae$b;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$1;->b:Lcom/google/vr/sdk/widgets/video/deps/ag;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ae$b;->a(Lcom/google/vr/sdk/widgets/video/deps/ae;[BII[B)V

    return-void
.end method
