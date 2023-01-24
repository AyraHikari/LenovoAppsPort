.class Lcom/zui/gallery/data/SecureAlbum$1;
.super Ljava/lang/Object;
.source "SecureAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/SecureAlbum;->getMediaItem(II)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/SecureAlbum;

.field final synthetic val$buf:[Lcom/zui/gallery/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/SecureAlbum;[Lcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum$1;->this$0:Lcom/zui/gallery/data/SecureAlbum;

    iput-object p2, p0, Lcom/zui/gallery/data/SecureAlbum$1;->val$buf:[Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum$1;->val$buf:[Lcom/zui/gallery/data/MediaItem;

    aput-object p2, v0, p1

    return-void
.end method
