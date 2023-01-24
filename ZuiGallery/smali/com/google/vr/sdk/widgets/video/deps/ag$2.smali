.class Lcom/google/vr/sdk/widgets/video/deps/ag$2;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/ag;->a([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/vr/sdk/widgets/video/deps/ae$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaDrm$KeyRequest;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ag;Landroid/media/MediaDrm$KeyRequest;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$2;->a:Landroid/media/MediaDrm$KeyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$2;->a:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$2;->a:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
