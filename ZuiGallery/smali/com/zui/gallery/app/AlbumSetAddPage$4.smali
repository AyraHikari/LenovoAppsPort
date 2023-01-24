.class Lcom/zui/gallery/app/AlbumSetAddPage$4;
.super Ljava/lang/Object;
.source "AlbumSetAddPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->pickAlbum(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

.field final synthetic val$groupId:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;I)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iput p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$4;->val$groupId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$4;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$4;->val$groupId:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, v1, p2}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$800(Lcom/zui/gallery/app/AlbumSetAddPage;IZ)V

    .line 415
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
