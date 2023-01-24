.class public Lcom/google/vr/libraries/video/ProjectionScene$Mesh;
.super Ljava/lang/Object;
.source "ProjectionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/libraries/video/ProjectionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mesh"
.end annotation


# instance fields
.field private subMeshes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$Mesh;->subMeshes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSubMesh(Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$Mesh;->subMeshes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSubMesh(I)Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$Mesh;->subMeshes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;

    return-object p1
.end method

.method public getSubMeshCount()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene$Mesh;->subMeshes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
