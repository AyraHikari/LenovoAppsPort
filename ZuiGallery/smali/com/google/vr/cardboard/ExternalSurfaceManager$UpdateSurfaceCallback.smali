.class public interface abstract Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateSurfaceCallback"
.end annotation


# virtual methods
.method public abstract updateSurface(IIJ[F)V
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
.end method
