.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;
.super Ljava/lang/Object;
.source "NvsMultiThumbnailSequenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Thumbnail"
.end annotation


# instance fields
.field m_iconTaskId:J

.field m_imageView:Landroid/widget/ImageView;

.field m_imageViewUpToDate:Z

.field m_owner:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;

.field m_timestamp:J

.field m_touched:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 212
    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_timestamp:J

    .line 213
    iput-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_iconTaskId:J

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_imageViewUpToDate:Z

    .line 215
    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$Thumbnail;->m_touched:Z

    return-void
.end method
