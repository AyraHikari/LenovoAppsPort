.class Lcom/zui/gallery/cloud/CloudUtils$1;
.super Ljava/lang/Object;
.source "CloudUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudUtils;->batchCopy2Album(Lcom/zui/gallery/app/GalleryApp;Ljava/util/List;IZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Lcom/zui/gallery/app/GalleryApp;

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$isMove:Z

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudUtils$1;->val$application:Lcom/zui/gallery/app/GalleryApp;

    iput-object p2, p0, Lcom/zui/gallery/cloud/CloudUtils$1;->val$groupName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zui/gallery/cloud/CloudUtils$1;->val$isMove:Z

    iput-object p4, p0, Lcom/zui/gallery/cloud/CloudUtils$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 842
    new-instance v0, Lcom/zui/gallery/cloud/CloudUtils$1$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudUtils$1$1;-><init>(Lcom/zui/gallery/cloud/CloudUtils$1;)V

    .line 852
    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudUtils$1$1;->start()V

    return-void
.end method
