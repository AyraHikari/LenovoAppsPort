.class Lcom/zui/gallery/data/FilterTypeSet$1;
.super Ljava/lang/Object;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/FilterTypeSet;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/FilterTypeSet;

.field final synthetic val$buf:[Lcom/zui/gallery/data/Path;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/FilterTypeSet;I[Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/zui/gallery/data/FilterTypeSet$1;->this$0:Lcom/zui/gallery/data/FilterTypeSet;

    iput p2, p0, Lcom/zui/gallery/data/FilterTypeSet$1;->val$total:I

    iput-object p3, p0, Lcom/zui/gallery/data/FilterTypeSet$1;->val$buf:[Lcom/zui/gallery/data/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 2

    .line 105
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/data/FilterTypeSet$1;->this$0:Lcom/zui/gallery/data/FilterTypeSet;

    invoke-static {v1}, Lcom/zui/gallery/data/FilterTypeSet;->access$000(Lcom/zui/gallery/data/FilterTypeSet;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_1

    .line 106
    iget v0, p0, Lcom/zui/gallery/data/FilterTypeSet$1;->val$total:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    .line 108
    iget-object v0, p0, Lcom/zui/gallery/data/FilterTypeSet$1;->val$buf:[Lcom/zui/gallery/data/Path;

    aput-object p2, v0, p1

    nop

    :cond_1
    :goto_0
    return-void
.end method
