.class Lcom/zui/gallery/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/exif/ExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcom/zui/gallery/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/zui/gallery/exif/ExifTag;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifModifier$TagOffset;->mTag:Lcom/zui/gallery/exif/ExifTag;

    .line 45
    iput p2, p0, Lcom/zui/gallery/exif/ExifModifier$TagOffset;->mOffset:I

    return-void
.end method
