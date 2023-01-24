.class Lcom/google/vr/cardboard/ExternalSurfaceManager$1;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"

# interfaces
.implements Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeSurfaceManager:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$nativeSurfaceManager"
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$1;->val$nativeSurfaceManager:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSurface(IIJ[F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceId",
            "textureId",
            "timestamp",
            "transformMatrix"
        }
    .end annotation

    .line 70
    iget-wide v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$1;->val$nativeSurfaceManager:J

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->access$000(JIIJ[F)V

    return-void
.end method
