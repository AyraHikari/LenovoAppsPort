.class Lcom/zui/gallery/banner/FileListDetailsActivity$7;
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

    .line 716
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$7;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$7;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$800(Lcom/zui/gallery/banner/FileListDetailsActivity;)V

    :goto_0
    return-void
.end method
