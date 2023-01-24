.class public Lcom/zui/gallery/data/UnlockImage;
.super Lcom/zui/gallery/data/ActionImage;
.source "UnlockImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockImage"


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 1

    const v0, 0x7f0702f1

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/zui/gallery/data/ActionImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V

    return-void
.end method


# virtual methods
.method public getSupportedOperations()I
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/zui/gallery/data/ActionImage;->getSupportedOperations()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    return v0
.end method
