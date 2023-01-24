.class public Lzui/appcompat/widget/ToolbarWidgetWrapper;
.super Lzui/util/ReflectClass;
.source "ToolbarWidgetWrapper.java"


# static fields
.field private static mInstance:Lzui/appcompat/widget/ToolbarWidgetWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToolbar:Lzui/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;

    invoke-direct {v0}, Lzui/appcompat/widget/ToolbarWidgetWrapper;-><init>()V

    sput-object v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mInstance:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.appcompat.widget.ToolbarWidgetWrapper"

    .line 33
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getToolbar()Lzui/appcompat/widget/Toolbar;
    .locals 2

    .line 57
    sget-object v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mInstance:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    if-eqz v0, :cond_0

    const-string v1, "mToolbar"

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/ToolbarWidgetWrapper;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mInstance:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/ToolbarWidgetWrapper;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    new-instance v1, Lzui/appcompat/widget/Toolbar;

    invoke-direct {v1}, Lzui/appcompat/widget/Toolbar;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Lzui/appcompat/widget/Toolbar;->setRealObject(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lzui/appcompat/widget/Toolbar;->setParentContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 51
    sget-object v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mInstance:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    iput-object p1, v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateToolbar()V
    .locals 1

    .line 41
    iget-object v0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lzui/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lzui/appcompat/widget/ToolbarWidgetWrapper;->getToolbar()Lzui/appcompat/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lzui/appcompat/widget/Toolbar;

    .line 44
    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lzui/appcompat/widget/Toolbar;->updateZuiStyle()V

    :cond_1
    return-void
.end method
