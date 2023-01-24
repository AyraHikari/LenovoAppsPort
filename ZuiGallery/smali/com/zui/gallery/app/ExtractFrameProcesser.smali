.class Lcom/zui/gallery/app/ExtractFrameProcesser;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_MAX_SIZE:I = 0x400000

.field private static final CAHCE_FILE_MIM_SIZE:I = 0x19000

.field private static final EACH_FOLDER_MAX_CACHE_SIZE:I = 0x16

.field private static final FIVE_SEC_VIDEO_CACHE_SIZE:I = 0x11

.field private static final FOUR_SEC_VIDEO_MAX_CACHE_SIZE:I = 0xa

.field private static NONE:I = -0x1

.field private static final ONE_SEC_VIDEO_MIN_CACHE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExtractFrameProcesser"

.field private static TASK_COUNT:I = 0x4

.field private static final THREE_SEC_VIDEO_MIN_CACHE_SIZE:I = 0x8

.field private static final TWO_SEC_VIDEO_MIN_CACHE_SIZE:I = 0x4

.field private static instance:Lcom/zui/gallery/app/ExtractFrameProcesser;


# instance fields
.field private FRAME_SIZE:I

.field private final MAGIC_NO:I

.field private QUNTITY:I

.field private bestFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDir:Ljava/io/File;

.field private cacheRootDir:Ljava/io/File;

.field private extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

.field private frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isComplete:Z

.field jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

.field private mContext:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

.field private mDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mItem:Lcom/zui/gallery/data/LocalVideo;

.field private mPhotoSmartSelect:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

.field private mRect:Landroid/graphics/Rect;

.field private path:Ljava/lang/String;

.field private volatile requestStop:Z

.field private sequenceListener:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private yuvConertUtils:Lcom/zui/gallery/util/YUVConertUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;Lcom/zui/gallery/data/LocalVideo;)V
    .locals 2

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x9fdb8

    .line 1009
    iput v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->MAGIC_NO:I

    const/16 v0, 0x5a

    .line 1034
    iput v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->QUNTITY:I

    .line 1400
    new-instance v0, Lcom/zui/gallery/app/ExtractFrameProcesser$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/ExtractFrameProcesser$2;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V

    iput-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    .line 1747
    new-instance v0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/ExtractFrameProcesser$7;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V

    iput-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->sequenceListener:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    .line 1055
    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    .line 1056
    iput-object p2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    .line 1057
    invoke-virtual {p2}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    .line 1058
    iget-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    check-cast p1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mContext:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    .line 1059
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1060
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    .line 1061
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    .line 1062
    sget p1, Lcom/zui/gallery/app/ExtractFrameProcesser;->TASK_COUNT:I

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 1063
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    sget p2, Lcom/zui/gallery/app/ExtractFrameProcesser;->TASK_COUNT:I

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 1064
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {p2}, Lcom/zui/gallery/data/LocalVideo;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalVideo;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->FRAME_SIZE:I

    .line 1066
    new-instance p1, Lcom/zui/gallery/util/YUVConertUtils;

    invoke-direct {p1}, Lcom/zui/gallery/util/YUVConertUtils;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->yuvConertUtils:Lcom/zui/gallery/util/YUVConertUtils;

    .line 1067
    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->createCacheRootDir()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/ExtractFrameProcesser;)Z
    .locals 0

    .line 1005
    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->isRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/ExtractFrameProcesser;)Z
    .locals 0

    .line 1005
    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->isCacheFileValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/ExtractFrameProcesser;)V
    .locals 0

    .line 1005
    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->createCacheFolderDir()V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .line 1005
    sget v0, Lcom/zui/gallery/app/ExtractFrameProcesser;->TASK_COUNT:I

    return v0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/lang/Runnable;
    .locals 0

    .line 1005
    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->getProcessYUVTask()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/lang/Runnable;
    .locals 0

    .line 1005
    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->getParseCacheTask()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/data/LocalVideo;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/zui/gallery/app/ExtractFrameProcesser;Z)Z
    .locals 0

    .line 1005
    iput-boolean p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->isComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/lang/String;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/List;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/Best4KVideoSelectActivity;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mContext:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/ExtractFrameProcesser;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1005
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->roateImage(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/Map;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 1005
    sget v0, Lcom/zui/gallery/app/ExtractFrameProcesser;->NONE:I

    return v0
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/io/File;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/ExtractFrameProcesser;Ljava/lang/String;Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;Landroid/graphics/Matrix;)V
    .locals 0

    .line 1005
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->saveData(Ljava/lang/String;Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private complete()V
    .locals 3

    .line 1113
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    iget-object v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->onExtractComplete(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private createCacheFolderDir()V
    .locals 3

    .line 1267
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 1272
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1273
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheRootDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    .line 1274
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheDir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not exist create it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtractFrameProcesser"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private createCacheRootDir()V
    .locals 3

    .line 1259
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mContext:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "4kcache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheRootDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private extractTask()Ljava/lang/Runnable;
    .locals 1

    .line 1670
    new-instance v0, Lcom/zui/gallery/app/ExtractFrameProcesser$6;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/ExtractFrameProcesser$6;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V

    return-object v0
.end method

.method private getFrameBitmapByTime(J)Landroid/graphics/Bitmap;
    .locals 2

    .line 1158
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1159
    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 1161
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1162
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p1
.end method

.method public static declared-synchronized getInstance(Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;Lcom/zui/gallery/data/LocalVideo;)Lcom/zui/gallery/app/ExtractFrameProcesser;
    .locals 4

    const-class v0, Lcom/zui/gallery/app/ExtractFrameProcesser;

    monitor-enter v0

    .line 1072
    :try_start_0
    sget-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    if-nez v1, :cond_0

    .line 1073
    new-instance v1, Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;Lcom/zui/gallery/data/LocalVideo;)V

    sput-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    goto :goto_0

    .line 1074
    :cond_0
    sget-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {v1, p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->isSameFile(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ExtractFrameProcesser"

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    iget-object v3, v3, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    .line 1076
    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    sget-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-virtual {v1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->stop()V

    .line 1079
    new-instance v1, Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;Lcom/zui/gallery/data/LocalVideo;)V

    sput-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    goto :goto_0

    .line 1081
    :cond_1
    sget-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {v1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1082
    sget-object p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->complete()V

    const-string p0, "ExtractFrameProcesser"

    const-string p1, "processing complete"

    .line 1083
    invoke-static {p0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1084
    :cond_2
    sget-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {v1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "ExtractFrameProcesser"

    const-string p1, "is processing"

    .line 1085
    invoke-static {p0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1087
    :cond_3
    new-instance v1, Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;Lcom/zui/gallery/data/LocalVideo;)V

    sput-object v1, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;

    .line 1090
    :goto_0
    sget-object p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->instance:Lcom/zui/gallery/app/ExtractFrameProcesser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getParseCacheTask()Ljava/lang/Runnable;
    .locals 1

    .line 1419
    new-instance v0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/ExtractFrameProcesser$3;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V

    return-object v0
.end method

.method private getProcessYUVTask()Ljava/lang/Runnable;
    .locals 1

    .line 1531
    new-instance v0, Lcom/zui/gallery/app/ExtractFrameProcesser$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/ExtractFrameProcesser$4;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V

    return-object v0
.end method

.method private isCacheFileValid()Z
    .locals 13

    .line 1284
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ExtractFrameProcesser"

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1286
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 1287
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_e

    .line 1289
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1290
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheRootDir:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    .line 1291
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "cache folder \'"

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "[0-9]*"

    .line 1292
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1293
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    new-instance v7, Lcom/zui/gallery/app/ExtractFrameProcesser$1;

    invoke-direct {v7, p0, v4}, Lcom/zui/gallery/app/ExtractFrameProcesser$1;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser;Ljava/util/regex/Pattern;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1306
    array-length v6, v4

    if-lez v6, :cond_b

    const/16 v7, 0x16

    if-gt v6, v7, :cond_b

    .line 1309
    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    iget v1, v1, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    int-to-long v7, v1

    const-wide/16 v9, 0x1

    cmp-long v1, v7, v9

    const-wide/16 v9, 0x2

    const/4 v5, 0x1

    if-ltz v1, :cond_0

    cmp-long v1, v7, v9

    if-gez v1, :cond_0

    const/4 v1, 0x2

    if-gt v6, v1, :cond_4

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_0
    cmp-long v1, v7, v9

    const-wide/16 v9, 0x3

    if-ltz v1, :cond_1

    cmp-long v1, v7, v9

    if-gez v1, :cond_1

    const/4 v1, 0x4

    if-gt v6, v1, :cond_4

    goto :goto_0

    :cond_1
    cmp-long v1, v7, v9

    const-wide/16 v9, 0x4

    if-ltz v1, :cond_2

    cmp-long v1, v7, v9

    if-gez v1, :cond_2

    const/16 v1, 0x8

    if-gt v6, v1, :cond_4

    goto :goto_0

    :cond_2
    cmp-long v1, v7, v9

    const-wide/16 v9, 0x5

    if-ltz v1, :cond_3

    cmp-long v1, v7, v9

    if-gez v1, :cond_3

    const/16 v1, 0xa

    if-gt v6, v1, :cond_4

    goto :goto_0

    :cond_3
    cmp-long v1, v7, v9

    if-ltz v1, :cond_4

    const/16 v1, 0x11

    if-ge v6, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 1332
    array-length v0, v4

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v3, v4, v1

    .line 1333
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return v2

    .line 1337
    :cond_6
    array-length v1, v4

    move v6, v2

    :goto_3
    if-ge v6, v1, :cond_9

    aget-object v7, v4, v6

    .line 1338
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x19000

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 1339
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x400000

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    goto :goto_4

    .line 1344
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1347
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1348
    new-instance v10, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;

    invoke-direct {v10}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;-><init>()V

    .line 1349
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->path:Ljava/lang/String;

    int-to-long v11, v9

    .line 1350
    iput-wide v11, v10, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1352
    :try_start_1
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 1353
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    :try_start_2
    const-string/jumbo v7, "thread interrupted when add cache file info "

    .line 1355
    invoke-static {v3, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 1359
    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cache file name \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' is invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    :goto_4
    const-string v7, "cache file size too small or too big maybe file invalid"

    .line 1340
    invoke-static {v3, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1362
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cache file exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :goto_7
    sget v0, Lcom/zui/gallery/app/ExtractFrameProcesser;->TASK_COUNT:I

    sub-int/2addr v0, v5

    if-ge v2, v0, :cond_a

    .line 1371
    new-instance v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;

    invoke-direct {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;-><init>()V

    const-wide/32 v3, -0x9fdb8

    .line 1372
    iput-wide v3, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J

    .line 1374
    :try_start_3
    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 1376
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    move v2, v5

    goto :goto_9

    .line 1382
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' cache file  quantity invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    const-string v0, "cache files not exist"

    .line 1386
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1389
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1392
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can get video name "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1395
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache folder not exist for video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_9
    return v2
.end method

.method private isComplete()Z
    .locals 1

    .line 1152
    iget-boolean v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->isComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1153
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1154
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRunning()Z
    .locals 1

    .line 1658
    iget-boolean v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->requestStop:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameFile(Lcom/zui/gallery/data/MediaItem;)Z
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private loadBestSelectFrameTimeInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private mergeTask()Ljava/lang/Runnable;
    .locals 1

    .line 1560
    new-instance v0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/ExtractFrameProcesser$5;-><init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V

    return-object v0
.end method

.method private roateImage(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    .line 1662
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    int-to-float p3, p3

    .line 1663
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1664
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1665
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method private saveBestSelectFrameTimeInfo()Z
    .locals 11

    const-string v0, "+"

    const-string v1, "ExtractFrameProcesser"

    .line 1168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1170
    :try_start_0
    iget-object v5, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1171
    iget-object v5, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1172
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "best info "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1175
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mItem:Lcom/zui/gallery/data/LocalVideo;

    iget-wide v9, v9, Lcom/zui/gallery/data/LocalVideo;->dateModifiedInSec:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1177
    invoke-static {v8}, Lcom/zui/gallery/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1179
    invoke-static {v8}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide v8

    const-string v10, "frame_info"

    .line 1180
    invoke-virtual {v6, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_data"

    .line 1181
    iget-object v10, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->path:Ljava/lang/String;

    invoke-virtual {v6, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "media_type"

    .line 1183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1182
    invoke-virtual {v6, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "key"

    .line 1184
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1185
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mContext:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/zui/gallery/database/GalleryContract$VideoBestSelect;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "timeFrameInfo  is null"

    .line 1190
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "save BestSelectFrameTimeInfo exception "

    .line 1193
    invoke-static {v1, v5, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save bestSelectFrameTimeInfo spend time "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private saveData(Ljava/lang/String;Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;Landroid/graphics/Matrix;)V
    .locals 12

    const/4 v0, 0x0

    .line 1465
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1466
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1467
    iget-object v0, p2, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->data:[B

    .line 1468
    iget v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->FRAME_SIZE:I

    if-eqz v0, :cond_6

    .line 1469
    array-length v5, v0

    if-ge v5, v4, :cond_0

    goto/16 :goto_2

    .line 1473
    :cond_0
    iget v4, p2, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->stride:I

    .line 1474
    iget v4, p2, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->sliceHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "ExtractFrameProcesser"

    if-lez v4, :cond_3

    .line 1475
    :try_start_2
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v4, v6, :cond_3

    const-string v6, "cut sliceHeight"

    .line 1476
    invoke-static {v5, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    const/4 v7, 0x0

    .line 1479
    :goto_0
    iget-object v8, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1480
    iget-object v8, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v8, v7

    iget-object v9, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/2addr v9, v7

    iget-object v10, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-static {v0, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1483
    :cond_1
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v4, v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    int-to-double v8, v4

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 1485
    iget-object v8, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    :goto_1
    if-ge v7, v4, :cond_2

    .line 1486
    iget-object v9, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/2addr v9, v7

    iget-object v10, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    mul-int/2addr v10, v8

    iget-object v11, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-static {v0, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v6

    .line 1490
    :cond_3
    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->yuvConertUtils:Lcom/zui/gallery/util/YUVConertUtils;

    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4, v0, v6, v7}, Lcom/zui/gallery/util/YUVConertUtils;->decodeYUV420SP([BII)V

    .line 1491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YUV NV12 to NV21 time "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    iget-object v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    .line 1494
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1496
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->QUNTITY:I

    invoke-virtual {v8, v0, v2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1497
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x4

    .line 1498
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1499
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 v0, 0x280

    const/4 v2, 0x1

    .line 1501
    invoke-static {p1, v0, v2}, Lcom/zui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1502
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mContext:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    iget v0, v0, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoRoateDegree:I

    if-lez v0, :cond_4

    .line 1504
    invoke-direct {p0, p3, p1, v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->roateImage(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1506
    :cond_4
    iget-object p3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    iget-wide v2, p2, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J

    long-to-int p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1524
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :cond_6
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 1521
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1524
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :goto_4
    return-void

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1527
    :catch_4
    throw p1
.end method


# virtual methods
.method public getCacheRootDir()Ljava/io/File;
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheRootDir:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentVideoCacheDir()Ljava/io/File;
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 1094
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    invoke-interface {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->onExtractStart()V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->mergeTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ExtractFrameProcesser"

    const-string/jumbo v1, "stop"

    .line 1119
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1120
    iput-boolean v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->requestStop:Z

    const/4 v0, 0x0

    .line 1121
    iput-boolean v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->isComplete:Z

    const/4 v0, 0x0

    .line 1122
    iput-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->extractListener:Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    .line 1123
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1128
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mPhotoSmartSelect:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mPhotoSmartSelect:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->stop()V

    .line 1130
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->mPhotoSmartSelect:Lcom/zui/gallery/app/AbstractPhotoSmartSelect;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->unRegisterListener()V

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1133
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1135
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1136
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->bestFrameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1142
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1143
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1145
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_5

    .line 1146
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser;->frameTimes:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 1148
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
