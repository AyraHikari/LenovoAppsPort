.class public Lcom/zui/gallery/data/LocalVideoLowSpeed;
.super Lcom/zui/gallery/data/LocalVideo;
.source "LocalVideoLowSpeed.java"


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getMediaType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
