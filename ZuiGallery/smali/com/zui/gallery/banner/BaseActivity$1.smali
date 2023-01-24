.class Lcom/zui/gallery/banner/BaseActivity$1;
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


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/BaseActivity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/zui/gallery/banner/BaseActivity$1;->this$0:Lcom/zui/gallery/banner/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
