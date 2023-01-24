.class public Lcom/zui/gallery/jobscheduler/SyncTrashTask;
.super Ljava/lang/Object;
.source "SyncTrashTask.java"


# instance fields
.field private mGallery:Lcom/zui/gallery/app/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask;->mGallery:Lcom/zui/gallery/app/GalleryApp;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/jobscheduler/SyncTrashTask;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask;->mGallery:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method


# virtual methods
.method public startSync()V
    .locals 1

    .line 34
    new-instance v0, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;-><init>(Lcom/zui/gallery/jobscheduler/SyncTrashTask;)V

    .line 64
    invoke-virtual {v0}, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;->start()V

    return-void
.end method
