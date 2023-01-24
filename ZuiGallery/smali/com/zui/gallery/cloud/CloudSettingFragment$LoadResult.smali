.class Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadResult"
.end annotation


# instance fields
.field allCloudAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field syncOffAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field syncOnAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;->syncOnAlbums:Ljava/util/List;

    .line 513
    iput-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;->syncOffAlbums:Ljava/util/List;

    .line 514
    iput-object p3, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;->allCloudAlbums:Ljava/util/List;

    return-void
.end method
