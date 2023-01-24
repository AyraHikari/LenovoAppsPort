.class Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/zui/gallery/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/zui/gallery/exif/ExifTag;Z)V
    .locals 0

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;->tag:Lcom/zui/gallery/exif/ExifTag;

    .line 907
    iput-boolean p2, p0, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
