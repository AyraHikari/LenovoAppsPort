.class final Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;
.super Ljava/lang/Object;
.source "MediaCodecListCompat.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/transcoder/compat/MediaCodecListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaCodecInfoIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/media/MediaCodecInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCodecCount:I

.field private mIndex:I

.field final synthetic this$0:Lcom/zui/transcoder/compat/MediaCodecListCompat;


# direct methods
.method private constructor <init>(Lcom/zui/transcoder/compat/MediaCodecListCompat;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->this$0:Lcom/zui/transcoder/compat/MediaCodecListCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->access$100()I

    move-result p1

    iput p1, p0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mCodecCount:I

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/transcoder/compat/MediaCodecListCompat;Lcom/zui/transcoder/compat/MediaCodecListCompat$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;-><init>(Lcom/zui/transcoder/compat/MediaCodecListCompat;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 70
    iget v0, p0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mCodecCount:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Landroid/media/MediaCodecInfo;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->mIndex:I

    .line 79
    invoke-static {v0}, Lcom/zui/transcoder/compat/MediaCodecListCompat;->access$200(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/zui/transcoder/compat/MediaCodecListCompat$MediaCodecInfoIterator;->next()Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
