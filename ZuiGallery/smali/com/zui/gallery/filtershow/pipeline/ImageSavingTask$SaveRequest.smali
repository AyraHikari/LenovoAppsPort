.class Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;
.super Ljava/lang/Object;
.source "ImageSavingTask.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveRequest"
.end annotation


# instance fields
.field destinationFile:Ljava/io/File;

.field exit:Z

.field flatten:Z

.field isFromPrivacy:Z

.field preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field previewImage:Landroid/graphics/Bitmap;

.field quality:I

.field selectedUri:Landroid/net/Uri;

.field sizeFactor:F

.field sourceUri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
