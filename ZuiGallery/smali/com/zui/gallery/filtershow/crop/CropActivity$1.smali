.class Lcom/zui/gallery/filtershow/crop/CropActivity$1;
.super Ljava/lang/Object;
.source "CropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/crop/CropActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/crop/CropActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$1;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$1;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->startFinishOutput()V

    return-void
.end method
