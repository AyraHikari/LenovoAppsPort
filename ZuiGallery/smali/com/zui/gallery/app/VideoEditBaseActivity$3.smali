.class Lcom/zui/gallery/app/VideoEditBaseActivity$3;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;->showSaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$3;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 767
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$3;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    iput p2, p1, Lcom/zui/gallery/app/VideoEditBaseActivity;->mSaveVideoWhich:I

    .line 769
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$3;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$000(Lcom/zui/gallery/app/VideoEditBaseActivity;Z)V

    .line 771
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$3;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->access$100(Lcom/zui/gallery/app/VideoEditBaseActivity;)V

    return-void
.end method
