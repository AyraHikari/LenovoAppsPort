.class public Lcom/zui/gallery/data/PanoramaMetadataJob;
.super Ljava/lang/Object;
.source "PanoramaMetadataJob.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/data/PanoramaMetadataJob;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/zui/gallery/data/PanoramaMetadataJob;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/zui/gallery/data/PanoramaMetadataJob;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/gallery/data/PanoramaMetadataJob;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/zui/gallery/util/LightCycleHelper;->getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/PanoramaMetadataJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    move-result-object p1

    return-object p1
.end method
