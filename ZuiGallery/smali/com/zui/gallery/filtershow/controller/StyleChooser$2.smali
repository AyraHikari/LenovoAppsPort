.class Lcom/zui/gallery/filtershow/controller/StyleChooser$2;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/BitmapCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/StyleChooser;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/StyleChooser;

.field final synthetic val$button:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/StyleChooser;Landroid/widget/ImageButton;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser$2;->this$0:Lcom/zui/gallery/filtershow/controller/StyleChooser;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser$2;->val$button:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser$2;->val$button:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
