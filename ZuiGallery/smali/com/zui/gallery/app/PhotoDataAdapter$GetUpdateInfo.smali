.class Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1198
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    return-void
.end method

.method private needContentReload()Z
    .locals 5

    .line 1201
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1300(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v3}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1500(Lcom/zui/gallery/app/PhotoDataAdapter;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v3

    rem-int/lit8 v4, v0, 0x20

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1500(Lcom/zui/gallery/app/PhotoDataAdapter;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x20

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1205
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public call()Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1211
    new-instance v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter$1;)V

    .line 1212
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1900(Lcom/zui/gallery/app/PhotoDataAdapter;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->version:J

    .line 1213
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z

    move-result v1

    iput-boolean v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1214
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/zui/gallery/data/Path;

    .line 1215
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1216
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1300(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    .line 1217
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    .line 1218
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1198
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->call()Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
