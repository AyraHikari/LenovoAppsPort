.class public Lcom/zui/gallery/app/BatchService;
.super Landroid/app/Service;
.source "BatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/BatchService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mThreadPool:Lcom/zui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/zui/gallery/app/BatchService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/BatchService$LocalBinder;-><init>(Lcom/zui/gallery/app/BatchService;)V

    iput-object v0, p0, Lcom/zui/gallery/app/BatchService;->mBinder:Landroid/os/IBinder;

    .line 35
    new-instance v0, Lcom/zui/gallery/util/ThreadPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/zui/gallery/util/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/zui/gallery/app/BatchService;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    return-void
.end method


# virtual methods
.method public getThreadPool()Lcom/zui/gallery/util/ThreadPool;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/zui/gallery/app/BatchService;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/zui/gallery/app/BatchService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method
