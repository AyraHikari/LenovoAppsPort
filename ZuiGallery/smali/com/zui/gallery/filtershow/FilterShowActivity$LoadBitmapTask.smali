.class Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapSize:I

.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 1988
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1989
    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1900(Lcom/zui/gallery/filtershow/FilterShowActivity;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 5

    .line 1994
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-boolean v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isReload:Z

    const/4 v1, 0x0

    .line 1998
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    iput-object v3, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 1996
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setActivity(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    .line 1997
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    aget-object p1, p1, v1

    iget v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    invoke-virtual {v0, p1, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->loadBitmapReload(Landroid/net/Uri;I)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v2

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    iput-object v3, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 2003
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setActivity(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    .line 2005
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2006
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    aget-object p1, p1, v1

    iget v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    sget-boolean v4, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    invoke-virtual {v0, p1, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->loadBitmap(Landroid/net/Uri;IZ)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v2

    .line 2010
    :cond_1
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    sget-boolean v4, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    invoke-virtual {p1, v0, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->loadPrivacyBitmap(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Boolean;

    .line 2016
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->queryLightCycle360(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->publishProgress([Ljava/lang/Object;)V

    .line 2017
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1985
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    .line 2033
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setMaster(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V

    .line 2034
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2038
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2039
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 2040
    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2041
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2002(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2042
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2102(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 2043
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const v0, 0x7f10006b

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 2044
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2045
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2200(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)V

    goto :goto_0

    .line 2047
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->cannotLoadImage()V

    :goto_0
    return-void

    .line 2052
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "FilterShowActivity"

    const-string v0, "RenderScript context destroyed during load"

    .line 2053
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2056
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const v3, 0x7f0801ea

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2057
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2059
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2060
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setOriginalBitmap(Landroid/graphics/Bitmap;)V

    if-nez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2062
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2063
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 2064
    :goto_1
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setPreviewScaleFactor(F)V

    .line 2065
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2066
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->removeTinyPlanet()V

    .line 2068
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 2069
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 2070
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 2071
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 2072
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1802(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 2074
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->warnListeners()V

    .line 2077
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 2078
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setLoadedPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    const-string/jumbo v0, "woatxxx"

    const-string v4, "removeFilterRepresentation: iiiiiiiii"

    .line 2079
    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 2081
    invoke-static {v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getLastRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v5

    .line 2080
    invoke-virtual {v0, v4, v5, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 2082
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2102(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    goto :goto_2

    .line 2084
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setDefaultPreset()V

    .line 2087
    :goto_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetGeometryImages(Z)V

    .line 2089
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.camera.action.TINY_PLANET"

    if-ne v0, v3, :cond_7

    .line 2090
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getTinyPlanet()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 2092
    :cond_7
    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {v0, v3, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/FilterShowActivity$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 2093
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2094
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->warnListeners()V

    .line 2095
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1985
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Boolean;)V
    .locals 1

    .line 2022
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2023
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2026
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2027
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1702(Lcom/zui/gallery/filtershow/FilterShowActivity;Z)Z

    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1985
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->onProgressUpdate([Ljava/lang/Boolean;)V

    return-void
.end method
