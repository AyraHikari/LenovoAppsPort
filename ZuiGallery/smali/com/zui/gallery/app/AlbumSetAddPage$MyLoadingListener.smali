.class Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetAddPage.java"

# interfaces
.implements Lcom/zui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;Lcom/zui/gallery/app/AlbumSetAddPage$1;)V
    .locals 0

    .line 1102
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 1

    .line 1110
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2300(Lcom/zui/gallery/app/AlbumSetAddPage;I)V

    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$MyLoadingListener;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2500(Lcom/zui/gallery/app/AlbumSetAddPage;I)V

    return-void
.end method
