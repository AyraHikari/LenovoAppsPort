.class public Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;
.super Landroid/os/Binder;
.source "GalleryPreLoadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/service/GalleryPreLoadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/zui/gallery/app/service/GalleryPreLoadService;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    return-object v0
.end method
