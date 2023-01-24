.class Lcom/zui/gallery/app/PhotoPage$MyMenuVisibilityListener;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/PhotoPage;->access$002(Lcom/zui/gallery/app/PhotoPage;Z)Z

    .line 466
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$100(Lcom/zui/gallery/app/PhotoPage;)V

    return-void
.end method
