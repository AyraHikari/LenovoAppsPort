.class Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;
.super Ljava/lang/Object;
.source "ImageSavingTask.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "URIResult"
.end annotation


# instance fields
.field absolutePath:Ljava/lang/String;

.field exit:Z

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
