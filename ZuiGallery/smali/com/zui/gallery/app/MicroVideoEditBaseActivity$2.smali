.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$2;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->showSaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$2;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 570
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
