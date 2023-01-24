.class public Lcom/zui/gallery/decode/LocalLargeImageRequest;
.super Ljava/lang/Object;
.source "LocalLargeImageRequest.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field mLocalFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/zui/gallery/decode/LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/zui/gallery/decode/LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/decode/DecodeUtils;->createBitmapRegionDecoder(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/zui/gallery/decode/LocalLargeImageRequest;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    return-object p1
.end method
