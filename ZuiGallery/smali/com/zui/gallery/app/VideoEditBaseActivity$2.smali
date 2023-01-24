.class Lcom/zui/gallery/app/VideoEditBaseActivity$2;
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

    .line 773
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$2;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 776
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
