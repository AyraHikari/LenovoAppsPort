.class Lcom/zui/gallery/banner/FileListDetailsActivity$6;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity;->createMoreDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$6;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "privatekey"

    const-string v0, "cancel"

    .line 733
    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
