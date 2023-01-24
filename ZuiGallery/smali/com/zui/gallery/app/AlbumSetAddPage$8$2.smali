.class Lcom/zui/gallery/app/AlbumSetAddPage$8$2;
.super Ljava/lang/Object;
.source "AlbumSetAddPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/AlbumSetAddPage$8;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage$8;Ljava/lang/String;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8$2;->this$1:Lcom/zui/gallery/app/AlbumSetAddPage$8;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8$2;->this$1:Lcom/zui/gallery/app/AlbumSetAddPage$8;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8$2;->val$id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, v1, p2}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$800(Lcom/zui/gallery/app/AlbumSetAddPage;IZ)V

    .line 922
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
