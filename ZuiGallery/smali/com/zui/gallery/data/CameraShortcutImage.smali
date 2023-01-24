.class public Lcom/zui/gallery/data/CameraShortcutImage;
.super Lcom/zui/gallery/data/ActionImage;
.source "CameraShortcutImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraShortcutImage"


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 1

    const v0, 0x7f0702ef

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/zui/gallery/data/ActionImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V

    return-void
.end method


# virtual methods
.method public getSupportedOperations()I
    .locals 2

    .line 32
    invoke-super {p0}, Lcom/zui/gallery/data/ActionImage;->getSupportedOperations()I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method
