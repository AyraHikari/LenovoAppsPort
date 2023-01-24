.class Lcom/zui/gallery/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/zui/gallery/ui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/TileImageView$1;)V
    .locals 0

    .line 777
    invoke-direct {p0}, Lcom/zui/gallery/ui/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 794
    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/zui/gallery/ui/TileImageView$Tile;

    return-void
.end method

.method public pop()Lcom/zui/gallery/ui/TileImageView$Tile;
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/zui/gallery/ui/TileImageView$Tile;

    if-eqz v0, :cond_0

    .line 782
    iget-object v1, v0, Lcom/zui/gallery/ui/TileImageView$Tile;->mNext:Lcom/zui/gallery/ui/TileImageView$Tile;

    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/zui/gallery/ui/TileImageView$Tile;

    :cond_0
    return-object v0
.end method

.method public push(Lcom/zui/gallery/ui/TileImageView$Tile;)Z
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/zui/gallery/ui/TileImageView$Tile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 788
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/zui/gallery/ui/TileImageView$Tile;

    iput-object v1, p1, Lcom/zui/gallery/ui/TileImageView$Tile;->mNext:Lcom/zui/gallery/ui/TileImageView$Tile;

    .line 789
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/zui/gallery/ui/TileImageView$Tile;

    return v0
.end method
