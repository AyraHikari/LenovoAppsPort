.class public Lcom/zui/gallery/filtershow/history/HistoryItem;
.super Ljava/lang/Object;
.source "HistoryItem.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HistoryItem"


# instance fields
.field private mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field private mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mPreviewImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zui/gallery/filtershow/history/HistoryItem;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/history/HistoryItem;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    :cond_0
    return-void
.end method


# virtual methods
.method public getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryItem;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryItem;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getPreviewImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/filtershow/history/HistoryItem;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/zui/gallery/filtershow/history/HistoryItem;->mPreviewImage:Landroid/graphics/Bitmap;

    return-void
.end method
