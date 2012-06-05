.class public Landroid/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field private static final DBG:Z = false

.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mDefaultSearchableForWebSearch:Landroid/app/SearchableInfo;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesForWebSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "com.android.quicksearchbox/.google.GoogleSearch"

    sput-object v0, Landroid/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 83
    const-string v0, "com.google.android.googlequicksearchbox/.google.GoogleSearch"

    sput-object v0, Landroid/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 380
    new-instance v0, Landroid/server/search/Searchables$1;

    invoke-direct {v0}, Landroid/server/search/Searchables$1;-><init>()V

    sput-object v0, Landroid/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 65
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 66
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 69
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesForWebSearchList:Ljava/util/ArrayList;

    .line 70
    iput-object v0, p0, Landroid/server/search/Searchables;->mDefaultSearchableForWebSearch:Landroid/app/SearchableInfo;

    .line 76
    iput-object v0, p0, Landroid/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 77
    iput-object v0, p0, Landroid/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 93
    iput-object p1, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Landroid/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 331
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    sget-object v3, Landroid/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    :cond_0
    return-object v0
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, installed:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, searchProviderSetting:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 352
    .local v0, globalSearchComponent:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    .end local v0           #globalSearchComponent:Landroid/content/ComponentName;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 7
    .parameter "globalSearchActivity"

    .prologue
    const/4 v4, 0x0

    .line 437
    if-nez p1, :cond_0

    .line 452
    :goto_0
    return-object v4

    .line 440
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    iget-object v5, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 443
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 446
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 447
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 449
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    const-string v5, "Searchables"

    const-string v6, "No web search activity found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, providerList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 419
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v1

    .line 422
    :cond_0
    const-string v1, "Searchables"

    const-string v2, "No global search activity found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "search_global_search_activity"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferredWebSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 13
    .parameter "context"

    .prologue
    .line 556
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 558
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/high16 v11, 0x1

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 559
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_0

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v12, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 565
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070034

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, preferredActivities:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v3, v0, v5

    .line 568
    .local v3, componentName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 569
    .local v2, component:Landroid/content/ComponentName;
    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-static {p0, v2, v11}, Landroid/server/search/Searchables;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v4, v2

    .line 589
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componentName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #preferredActivities:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 567
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #component:Landroid/content/ComponentName;
    .restart local v3       #componentName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #preferredActivities:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 577
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componentName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #preferredActivities:[Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 579
    sget-object v11, Landroid/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 581
    .local v4, enhancedGoogleSearch:Landroid/content/ComponentName;
    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-static {p0, v4, v11}, Landroid/server/search/Searchables;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 588
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v4           #enhancedGoogleSearch:Landroid/content/ComponentName;
    :cond_4
    if-nez v10, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    .line 589
    :cond_5
    new-instance v4, Landroid/content/ComponentName;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "globalSearch"

    .prologue
    .line 366
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 369
    iget-object v3, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 370
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 373
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    const/4 v3, 0x1

    .line 377
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 409
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "component"
    .parameter "action"

    .prologue
    const/4 v10, 0x0

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 528
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v6, p1, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 535
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 538
    .local v9, webSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v8, v10, [Landroid/content/ComponentName;

    .line 539
    .local v8, set:[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 540
    .local v1, bestMatch:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 541
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 542
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v4

    .line 544
    iget v10, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v10, v1, :cond_0

    iget v1, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 540
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 529
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #bestMatch:I
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    .end local v8           #set:[Landroid/content/ComponentName;
    .end local v9           #webSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v2

    .line 551
    :goto_1
    return v10

    .line 547
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #bestMatch:I
    .restart local v4       #i:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v8       #set:[Landroid/content/ComponentName;
    .restart local v9       #webSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v6, v3, v1, v8, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 551
    const/4 v10, 0x1

    goto :goto_1
.end method


# virtual methods
.method public buildSearchableList()V
    .locals 28

    .prologue
    .line 211
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v16, newSearchablesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v15, newSearchablesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v14, newSearchablesInGlobalSearchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v13, newSearchablesForWebSearchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 228
    .local v18, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v25, "android.intent.action.SEARCH"

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v9, intent:Landroid/content/Intent;
    const/16 v25, 0x80

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 232
    .local v19, searchList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v23, Landroid/content/Intent;

    const-string v25, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v23, webSearchIntent:Landroid/content/Intent;
    const/16 v25, 0x80

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    .line 236
    .local v22, webSearchInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v19, :cond_0

    if-eqz v22, :cond_5

    .line 237
    :cond_0
    if-nez v19, :cond_2

    const/16 v20, 0x0

    .line 238
    .local v20, search_count:I
    :goto_0
    if-nez v22, :cond_3

    const/16 v24, 0x0

    .line 239
    .local v24, web_search_count:I
    :goto_1
    add-int v5, v20, v24

    .line 240
    .local v5, count:I
    const/4 v7, 0x0

    .local v7, ii:I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 242
    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ResolveInfo;

    move-object/from16 v8, v25

    .line 245
    .local v8, info:Landroid/content/pm/ResolveInfo;
    :goto_3
    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 247
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    new-instance v25, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-nez v25, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/SearchableInfo;

    move-result-object v21

    .line 249
    .local v21, searchable:Landroid/app/SearchableInfo;
    if-eqz v21, :cond_1

    .line 250
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual/range {v21 .. v21}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual/range {v21 .. v21}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 253
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v21           #searchable:Landroid/app/SearchableInfo;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 237
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #count:I
    .end local v7           #ii:I
    .end local v8           #info:Landroid/content/pm/ResolveInfo;
    .end local v20           #search_count:I
    .end local v24           #web_search_count:I
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    goto :goto_0

    .line 238
    .restart local v20       #search_count:I
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    goto :goto_1

    .line 242
    .restart local v5       #count:I
    .restart local v7       #ii:I
    .restart local v24       #web_search_count:I
    :cond_4
    sub-int v25, v7, v20

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ResolveInfo;

    move-object/from16 v8, v25

    goto :goto_3

    .line 260
    .end local v5           #count:I
    .end local v7           #ii:I
    .end local v20           #search_count:I
    .end local v24           #web_search_count:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v11

    .line 263
    .local v11, newGlobalSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v12

    .line 268
    .local v12, newGlobalSearchActivity:Landroid/content/ComponentName;
    if-eqz v22, :cond_7

    .line 269
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v6, v0, :cond_7

    .line 270
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 271
    .restart local v3       #ai:Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .local v4, component:Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/SearchableInfo;

    .line 273
    .restart local v21       #searchable:Landroid/app/SearchableInfo;
    if-nez v21, :cond_6

    .line 274
    const-string v25, "Searchables"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "did not find component in searchables: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 277
    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 283
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    .end local v4           #component:Landroid/content/ComponentName;
    .end local v6           #i:I
    .end local v21           #searchable:Landroid/app/SearchableInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/server/search/Searchables;->getPreferredWebSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v17

    .line 286
    .local v17, newWebSearchActivity:Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 287
    .local v10, newDefaultSearchableForWebSearch:Landroid/app/SearchableInfo;
    if-eqz v17, :cond_8

    .line 288
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #newDefaultSearchableForWebSearch:Landroid/app/SearchableInfo;
    check-cast v10, Landroid/app/SearchableInfo;

    .line 290
    .restart local v10       #newDefaultSearchableForWebSearch:Landroid/app/SearchableInfo;
    :cond_8
    if-nez v10, :cond_9

    .line 291
    const-string v25, "Searchables"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "No searchable info found for new default web search activity "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_9
    monitor-enter p0

    .line 304
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 305
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 306
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 307
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 308
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 311
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/server/search/Searchables;->mSearchablesForWebSearchList:Ljava/util/ArrayList;

    .line 312
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/server/search/Searchables;->mDefaultSearchableForWebSearch:Landroid/app/SearchableInfo;

    .line 315
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v25

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25
.end method

.method public declared-synchronized getDefaultSearchableForWebSearch()Landroid/app/SearchableInfo;
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/Searchables;->mDefaultSearchableForWebSearch:Landroid/app/SearchableInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchableInfo;

    .line 128
    .local v6, result:Landroid/app/SearchableInfo;
    if-eqz v6, :cond_0

    monitor-exit p0

    move-object v7, v6

    .line 185
    :goto_0
    return-object v7

    .line 129
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v7, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v9, 0x80

    invoke-virtual {v7, p1, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 140
    const/4 v4, 0x0

    .line 143
    .local v4, refActivityName:Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 144
    .local v2, md:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 145
    const-string v7, "android.app.default_searchable"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    :cond_1
    if-nez v4, :cond_2

    .line 149
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 150
    if-eqz v2, :cond_2

    .line 151
    const-string v7, "android.app.default_searchable"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_2
    if-eqz v4, :cond_6

    .line 159
    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v8

    .line 160
    goto :goto_0

    .line 129
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #md:Landroid/os/Bundle;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v6           #result:Landroid/app/SearchableInfo;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 162
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #md:Landroid/os/Bundle;
    .restart local v4       #refActivityName:Ljava/lang/String;
    .restart local v6       #result:Landroid/app/SearchableInfo;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, pkg:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2e

    if-ne v7, v9, :cond_4

    .line 165
    new-instance v5, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v5, referredActivity:Landroid/content/ComponentName;
    :goto_1
    monitor-enter p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 173
    :try_start_4
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/SearchableInfo;

    move-object v6, v0

    .line 174
    if-eqz v6, :cond_5

    .line 175
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v6

    goto :goto_0

    .line 167
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :cond_4
    :try_start_5
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .restart local v5       #referredActivity:Landroid/content/ComponentName;
    goto :goto_1

    .line 178
    :cond_5
    :try_start_6
    monitor-exit p0

    .end local v2           #md:Landroid/os/Bundle;
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :cond_6
    :goto_2
    move-object v7, v8

    .line 185
    goto :goto_0

    .line 178
    .restart local v2       #md:Landroid/os/Bundle;
    .restart local v3       #pkg:Ljava/lang/String;
    .restart local v4       #refActivityName:Ljava/lang/String;
    .restart local v5       #referredActivity:Landroid/content/ComponentName;
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v7
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 180
    .end local v2           #md:Landroid/os/Bundle;
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public declared-synchronized getSearchablesForWebSearchList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesForWebSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    monitor-exit p0

    return-object v0

    .line 459
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultWebSearch(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "component"

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-static {v0, p1, v1}, Landroid/server/search/Searchables;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 512
    invoke-virtual {p0}, Landroid/server/search/Searchables;->buildSearchableList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
