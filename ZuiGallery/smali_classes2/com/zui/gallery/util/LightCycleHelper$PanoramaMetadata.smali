.class public Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;
.super Ljava/lang/Object;
.source "LightCycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/LightCycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaMetadata"
.end annotation


# instance fields
.field public final mIsPanorama360:Z

.field public final mUsePanoramaViewer:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    .line 32
    iput-boolean p2, p0, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    return-void
.end method
