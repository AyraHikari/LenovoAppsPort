.class public Lcom/google/vr/libraries/video/ProjectionScene;
.super Ljava/lang/Object;
.source "ProjectionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/libraries/video/ProjectionScene$Mesh;,
        Lcom/google/vr/libraries/video/ProjectionScene$SubMesh;
    }
.end annotation


# instance fields
.field private crc:I

.field private meshes:[Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

.field private stereoMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/libraries/video/ProjectionScene;->crc:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    .line 3
    iput-object p1, p0, Lcom/google/vr/libraries/video/ProjectionScene;->meshes:[Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    return-void
.end method


# virtual methods
.method public getCrc()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/vr/libraries/video/ProjectionScene;->crc:I

    return v0
.end method

.method public getLeftMesh()Lcom/google/vr/libraries/video/ProjectionScene$Mesh;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene;->meshes:[Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRightMesh()Lcom/google/vr/libraries/video/ProjectionScene$Mesh;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene;->meshes:[Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStereoMode()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/libraries/video/ProjectionScene;->stereoMode:I

    return v0
.end method

.method public setLeftMesh(Lcom/google/vr/libraries/video/ProjectionScene$Mesh;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene;->meshes:[Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public setRightMesh(Lcom/google/vr/libraries/video/ProjectionScene$Mesh;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/vr/libraries/video/ProjectionScene;->meshes:[Lcom/google/vr/libraries/video/ProjectionScene$Mesh;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public setStereoMode(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/vr/libraries/video/ProjectionScene;->stereoMode:I

    return-void
.end method
