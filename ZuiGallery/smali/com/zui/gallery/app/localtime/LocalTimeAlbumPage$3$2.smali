.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 669
    new-instance p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;)V

    .line 699
    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2$1;->start()V

    return-void
.end method
