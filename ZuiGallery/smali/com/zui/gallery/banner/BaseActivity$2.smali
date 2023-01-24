.class Lcom/zui/gallery/banner/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/BaseActivity;->createDialogBuilder(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/BaseActivity;

.field final synthetic val$positiveButtonMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/zui/gallery/banner/BaseActivity$2;->this$0:Lcom/zui/gallery/banner/BaseActivity;

    iput-object p2, p0, Lcom/zui/gallery/banner/BaseActivity$2;->val$positiveButtonMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/zui/gallery/banner/BaseActivity$2;->this$0:Lcom/zui/gallery/banner/BaseActivity;

    iget-object p2, p0, Lcom/zui/gallery/banner/BaseActivity$2;->val$positiveButtonMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/banner/BaseActivity;->processFiles(Ljava/lang/String;)V

    return-void
.end method
