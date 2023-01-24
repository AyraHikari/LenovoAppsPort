.class Lcom/zui/gallery/data/ClusterSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "ClusterSource.java"


# static fields
.field static final CLUSTER_ALBUMSET_FACE:I = 0x4

.field static final CLUSTER_ALBUMSET_LOCATION:I = 0x1

.field static final CLUSTER_ALBUMSET_SIZE:I = 0x3

.field static final CLUSTER_ALBUMSET_TAG:I = 0x2

.field static final CLUSTER_ALBUMSET_TIME:I = 0x0

.field static final CLUSTER_ALBUM_FACE:I = 0x104

.field static final CLUSTER_ALBUM_LOCATION:I = 0x101

.field static final CLUSTER_ALBUM_SIZE:I = 0x103

.field static final CLUSTER_ALBUM_TAG:I = 0x102

.field static final CLUSTER_ALBUM_TIME:I = 0x100


# instance fields
.field mApplication:Lcom/zui/gallery/app/GalleryApp;

.field mMatcher:Lcom/zui/gallery/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    const-string v0, "cluster"

    .line 38
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 40
    new-instance p1, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {p1}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/time"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 42
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/location"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 43
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/tag"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 44
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/size"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 45
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/face"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 47
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/time/*"

    const/16 v1, 0x100

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 48
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/location/*"

    const/16 v1, 0x101

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/tag/*"

    const/16 v1, 0x102

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 50
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/size/*"

    const/16 v1, 0x103

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 51
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cluster/*/face/*"

    const/16 v1, 0x104

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/zui/gallery/data/ClusterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v3, p0, Lcom/zui/gallery/data/ClusterSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v1}, Lcom/zui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getParent()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/zui/gallery/data/ClusterAlbum;

    invoke-direct {v1, p1, v3, v0}, Lcom/zui/gallery/data/ClusterAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaSet;)V

    return-object v1

    .line 71
    :cond_0
    new-instance v3, Lcom/zui/gallery/data/ClusterAlbumSet;

    iget-object v4, p0, Lcom/zui/gallery/data/ClusterSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    aget-object v1, v1, v2

    invoke-direct {v3, p1, v4, v1, v0}, Lcom/zui/gallery/data/ClusterAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaSet;I)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
